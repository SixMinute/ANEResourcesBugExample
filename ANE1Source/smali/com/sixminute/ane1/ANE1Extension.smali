.class public Lcom/sixminute/ane1/ANE1Extension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ANE1"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createContext extId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    new-instance v0, Lcom/sixminute/ane1/ANE1ExtensionContext;

    invoke-direct {v0}, Lcom/sixminute/ane1/ANE1ExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const-string v0, "dispose"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    const-string v0, "initialize"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    return-void
.end method
