.class public Lcom/sixminute/ane2/ANE2ExtensionContext$Initialise;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixminute/ane2/ANE2ExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Initialise"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const-string v0, "FREContext.Initialise"

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2Extension;->DLog(Ljava/lang/String;)V

    const-string v0, "test resource"

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2Extension;->DLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/chartboost/android/R$layout;->com_chartboost_fragment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2Extension;->DLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "test resource over"

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2Extension;->DLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2ExtensionContext;->access$002(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;

    invoke-static {}, Lcom/sixminute/ane2/ANE2ExtensionContext;->access$000()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    const-string v1, "air"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->setFramework(Ljava/lang/String;)V

    invoke-static {}, Lcom/sixminute/ane2/ANE2ExtensionContext;->access$000()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    invoke-static {}, Lcom/sixminute/ane2/ANE2ExtensionContext;->access$000()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane2/ANE2Extension;->DLog(Ljava/lang/String;)V

    goto :goto_0
.end method
