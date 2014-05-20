.class Lair/com/sixminute/ANE1Test/debug/AppEntry$2;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/sixminute/ANE1Test/debug/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/sixminute/ANE1Test/debug/AppEntry;


# direct methods
.method constructor <init>(Lair/com/sixminute/ANE1Test/debug/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lair/com/sixminute/ANE1Test/debug/AppEntry$2;->this$0:Lair/com/sixminute/ANE1Test/debug/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 170
    return-void
.end method
