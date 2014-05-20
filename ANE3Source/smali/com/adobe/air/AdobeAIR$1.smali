.class Lcom/adobe/air/AdobeAIR$1;
.super Ljava/lang/Object;
.source "AdobeAIR.java"

# interfaces
.implements Lcom/adobe/air/ShakeListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIR;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIR;


# direct methods
.method constructor <init>(Lcom/adobe/air/AdobeAIR;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    const-class v2, Lcom/adobe/air/wand/WandActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AdobeAIR;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
