.class public Lcom/facebook/widget/WebDialog$Builder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/widget/WebDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "session"
    .parameter "action"
    .parameter "parameters"

    .prologue
    .line 603
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 604
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "action"

    .prologue
    .line 589
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "applicationId"
    .parameter "action"
    .parameter "parameters"

    .prologue
    .line 616
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 617
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/WebDialog$BuilderBase;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/WebDialog$BuilderBase;->setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method
