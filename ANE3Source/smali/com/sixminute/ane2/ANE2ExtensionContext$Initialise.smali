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
    .locals 2

    const-string v0, "FREContext.Initialise"

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
.end method
