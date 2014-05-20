.class Lcom/adobe/air/net/AndroidNetworkInfo;
.super Ljava/lang/Object;
.source "AndroidNetworkInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidNetworkInfo"

.field private static sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/adobe/air/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    .line 53
    return-void
.end method

.method public static GetAndroidNetworkInfo(Landroid/content/Context;)Lcom/adobe/air/net/AndroidNetworkInfo;
    .locals 1
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/adobe/air/net/AndroidNetworkInfo;

    invoke-direct {v0, p0}, Lcom/adobe/air/net/AndroidNetworkInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    .line 46
    :cond_0
    sget-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    return-object v0
.end method

.method private enumerateNetworkInterfaces()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 77
    aget-object v2, v0, v1

    .line 78
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 91
    invoke-virtual {p0, v2}, Lcom/adobe/air/net/AndroidNetworkInfo;->getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;

    move-result-object v2

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/adobe/air/net/AndroidNetworkInfo;->getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 99
    :cond_0
    return-void

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public GetNetworkInterface(I)Lcom/adobe/air/net/NetworkInterface;
    .locals 1
    .parameter

    .prologue
    .line 103
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/net/NetworkInterface;

    move-object v0, p0

    goto :goto_0
.end method

.method public GetNetworkInterfacesCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 58
    invoke-direct {p0}, Lcom/adobe/air/net/AndroidNetworkInfo;->enumerateNetworkInterfaces()V

    .line 59
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public InterfacesReadComplete()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 65
    return-void
.end method

.method getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "IPv4"

    .line 152
    new-instance v0, Lcom/adobe/air/net/InterfaceAddress;

    invoke-direct {v0}, Lcom/adobe/air/net/InterfaceAddress;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v3

    .line 178
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 156
    if-nez p0, :cond_1

    move-object v0, v3

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_2

    .line 162
    iget v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    .line 163
    iget v2, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    iput v2, v0, Lcom/adobe/air/net/InterfaceAddress;->prefixLength:I

    .line 164
    iget v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v1, v1, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/InterfaceAddress;->broadcast:Ljava/lang/String;

    .line 165
    const-string v1, "IPv4"

    iput-object v4, v0, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 169
    if-nez v1, :cond_3

    move-object v0, v3

    .line 172
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    .line 175
    const-string v1, "IPv4"

    iput-object v4, v0, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 2
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v0}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adobe/air/net/NetworkInterface;->active:Z

    .line 143
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    .line 146
    return-object v0
.end method

.method getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 3
    .parameter

    .prologue
    .line 111
    new-instance v1, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v1}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 113
    if-nez v0, :cond_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/adobe/air/net/NetworkInterface;->active:Z

    .line 124
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    .line 126
    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_2

    const-string v0, ""

    .line 130
    :cond_2
    iput-object v0, v1, Lcom/adobe/air/net/NetworkInterface;->hardwareAddress:Ljava/lang/String;

    .line 132
    :cond_3
    invoke-virtual {p0, p1}, Lcom/adobe/air/net/AndroidNetworkInfo;->getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/adobe/air/net/NetworkInterface;->addAddress(Lcom/adobe/air/net/InterfaceAddress;)V

    .line 135
    return-object v1
.end method
