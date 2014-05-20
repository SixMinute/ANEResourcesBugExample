.class public Lcom/sixminute/ane1/ANE1ExtensionContext;
.super Lcom/adobe/fre/FREContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;,
        Lcom/sixminute/ane1/ANE1ExtensionContext$Login;
    }
.end annotation


# static fields
.field public static final LOGIN:Ljava/lang/String; = "login"

.field private static sCallback:Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const-string v0, "FREContext<constructor>"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;
    .locals 1

    sget-object v0, Lcom/sixminute/ane1/ANE1ExtensionContext;->sCallback:Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;)Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;
    .locals 0

    sput-object p0, Lcom/sixminute/ane1/ANE1ExtensionContext;->sCallback:Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const-string v0, "FREContext.dispose"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    const-string v0, "FREContext.getFunctions"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "login"

    new-instance v2, Lcom/sixminute/ane1/ANE1ExtensionContext$Login;

    invoke-direct {v2}, Lcom/sixminute/ane1/ANE1ExtensionContext$Login;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
