.class public Lcom/adobe/air/wand/message/Notification$Header;
.super Lcom/adobe/air/wand/message/Message$Header;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/message/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/air/wand/message/Message$Type;->NOTIFICATION:Lcom/adobe/air/wand/message/Message$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/adobe/air/wand/message/Message$Header;-><init>(Ljava/lang/String;Lcom/adobe/air/wand/message/Message$Type;J)V

    .line 31
    return-void
.end method
