.class Lcom/adobe/air/OrientationManager$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/OrientationManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xe1

    const/16 v5, 0x87

    const/16 v2, 0x2d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 228
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 242
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 245
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 268
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    if-eq v1, v2, :cond_a

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 272
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 274
    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #calls: Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$500(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v1

    .line 280
    if-eqz v1, :cond_9

    .line 282
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 294
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mFinalOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$702(Lcom/adobe/air/OrientationManager;I)I

    .line 306
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$202(Lcom/adobe/air/OrientationManager;I)I

    .line 307
    return-void

    .line 247
    :cond_3
    if-lt p1, v2, :cond_4

    if-ge p1, v5, :cond_4

    .line 249
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 250
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 252
    :cond_4
    if-lt p1, v5, :cond_5

    if-ge p1, v6, :cond_5

    .line 254
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 255
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 257
    :cond_5
    if-lt p1, v6, :cond_6

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_6

    .line 259
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 260
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 262
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_8

    :cond_7
    const/16 v1, 0x13b

    if-lt p1, v1, :cond_0

    const/16 v1, 0x168

    if-ge p1, v1, :cond_0

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    #setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 265
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 286
    :cond_9
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #calls: Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$600(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    .line 287
    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 290
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #setter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1, v0}, Lcom/adobe/air/OrientationManager;->access$302(Lcom/adobe/air/OrientationManager;I)I

    goto/16 :goto_1

    .line 298
    :cond_a
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$800(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$900(Lcom/adobe/air/OrientationManager;)F

    move-result v0

    const v1, 0x40533333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 302
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 303
    :cond_b
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    #setter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0, v4}, Lcom/adobe/air/OrientationManager;->access$802(Lcom/adobe/air/OrientationManager;Z)Z

    goto/16 :goto_2
.end method
