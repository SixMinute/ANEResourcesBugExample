.class public Lair/com/sixminute/ANE3Test/debug/GetVersionCode;
.super Ljava/lang/Object;
.source "GetVersionCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "1.0.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method
