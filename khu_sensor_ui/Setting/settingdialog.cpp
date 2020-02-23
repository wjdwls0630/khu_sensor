#include "settingdialog.h"
#include "ui_settingdialog.h"

SettingDialog::SettingDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::SettingDialog), m_UART(new UART), m_ADS1292(new ADS1292)
{
    ui->setupUi(this);
    setWindowTitle(tr("Setting"));

    //fill out combo box
    this->fillPortsParameters();
    this->fillPortsInfo();
    this->showPortInfo(0);
    this->setDefaultConnectSetting();

    //update setting first
    this->updateConnectSetting();

    connect(ui->portInfoComboBox, SIGNAL(currentIndexChanged(int)),
            this, SLOT(showPortInfo(int)));

}

SettingDialog::~SettingDialog()
{
    delete ui;
}

UART SettingDialog::getUART(){ return *this->m_UART; }

void SettingDialog::fillPortsParameters(){
    //BaudRate
    ui->baudRateBox->addItem(QStringLiteral("9600"));
    ui->baudRateBox->addItem(QStringLiteral("19200"));
    ui->baudRateBox->addItem(QStringLiteral("38400"));
    ui->baudRateBox->addItem(QStringLiteral("115200"));
    ui->baudRateBox->addItem(QStringLiteral("961200"));

    //DataBits
    ui->dataBitsBox->addItem(QStringLiteral("5"));
    ui->dataBitsBox->addItem(QStringLiteral("6"));
    ui->dataBitsBox->addItem(QStringLiteral("7"));
    ui->dataBitsBox->addItem(QStringLiteral("8"));

    //Parity
    ui->parityBox->addItem(tr("None"));
    ui->parityBox->addItem(tr("Even"));
    ui->parityBox->addItem(tr("Odd"));
    ui->parityBox->addItem(tr("Mark"));
    ui->parityBox->addItem(tr("Space"));

    //Stop Bits
    ui->stopBitsBox->addItem(QStringLiteral("1"));

#ifdef Q_OS_WIN
    ui->stopBitsBox->addItem(tr("1.5"));
#endif

    ui->stopBitsBox->addItem(QStringLiteral("2"));

    //FlowControl
    ui->flowControlBox->addItem(tr("None"));
    ui->flowControlBox->addItem(tr("RTS/CTS"));
    ui->flowControlBox->addItem(tr("XON/XOFF"));
}

void SettingDialog::fillPortsInfo(){

    ui->portInfoComboBox->clear();

    QString description, manufacturer, serialNumber; // info of Serial port

    foreach (const QSerialPortInfo &port, QSerialPortInfo::availablePorts()) {
            QStringList port_info_list;
            description = port.description();
            manufacturer = port.manufacturer();
            serialNumber = port.serialNumber();

            port_info_list.append(port.portName());
            port_info_list.append((!description.isEmpty() ? description : "N/A"));
            port_info_list.append((!manufacturer.isEmpty() ? manufacturer : "N/A"));
            port_info_list.append((!serialNumber.isEmpty() ? serialNumber : "N/A"));
            port_info_list.append(port.systemLocation());
            port_info_list.append((port.vendorIdentifier() ? QString::number(port.vendorIdentifier(), 16) : "N/A"));
            port_info_list.append((port.productIdentifier() ? QString::number(port.productIdentifier(), 16) : "N/A"));

            ui->portInfoComboBox->addItem(port_info_list.at(0), port_info_list);
    }
}

void SettingDialog::setDefaultConnectSetting(){
    ui->portInfoComboBox->setCurrentIndex(0);
    ui->baudRateBox->setCurrentIndex(4); // BaudRate : 961200
    ui->dataBitsBox->setCurrentIndex(3); // Databits: 8bits
    ui->parityBox->setCurrentIndex(0); // Parity : None
    ui->stopBitsBox->setCurrentIndex(0); // StopBits 1bit
    ui->flowControlBox->setCurrentIndex(0); // FlowControl : No
}

void SettingDialog::updateConnectSetting(){
    this->m_UART->setName(ui->portInfoComboBox->currentText());
    this->m_UART->setBaudRate(ui->baudRateBox->currentText());
    this->m_UART->setDataBits(ui->dataBitsBox->currentText());
    this->m_UART->setParity(ui->parityBox->currentText());
    this->m_UART->setStopBits(ui->stopBitsBox->currentText());
    this->m_UART->setFlowControl(ui->flowControlBox->currentText());
    this->m_UART->setLocalEchoEnabled(ui->localEchoCheckBox->isChecked());
}

void SettingDialog::showPortInfo(int index){
    if(index == -1) return;

    QStringList port_info_list;
    port_info_list = ui->portInfoComboBox->itemData(index).toStringList();
    ui->portDescriptionLabel->setText(tr("Description: %1").arg(port_info_list.length() > 1 ? port_info_list.at(1) : tr("N/A")));
    ui->portManufacturerLabel->setText(tr("Manufacturer: %1").arg(port_info_list.length() > 2 ? port_info_list.at(2) : tr("N/A")));
    ui->portSerialNumberLabel->setText(tr("Serial number: %1").arg(port_info_list.length() > 3 ? port_info_list.at(3) : tr("N/A")));
    ui->portLocationLabel->setText(tr("Location: %1").arg(port_info_list.length() > 4 ? port_info_list.at(4) : tr("N/A")));
    ui->portVendorIdentifierLabel->setText(tr("Vendor Identifier: %1").arg(port_info_list.length() > 5 ? port_info_list.at(5) : tr("N/A")));
    ui->portProductIdentifierLabel->setText(tr("Product Identifier: %1").arg(port_info_list.length() > 6 ? port_info_list.at(6) : tr("N/A")));
}


void SettingDialog::on_applyPB_clicked()
{
    this->updateConnectSetting();
    qDebug()<<"UART_Settings";
    qDebug()<<"Name : "<<this->m_UART->getName();
    qDebug()<<"BaudRate : "<<this->m_UART->getBaudRateStr();
    qDebug()<<"DataBits : "<<this->m_UART->getDataBitsStr();
    qDebug()<<"Parity : "<<this->m_UART->getParityStr();
    qDebug()<<"StopBits : "<<this->m_UART->getStopBitsStr();
    qDebug()<<"FlowControl : "<<this->m_UART->getFlowControlStr();
    qDebug()<<"LocalEchoEnabled : "<<this->m_UART->getLocalEchoEnabled();
    hide();
    return;
}

