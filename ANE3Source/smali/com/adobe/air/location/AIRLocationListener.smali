.class public Lcom/adobe/air/location/AIRLocationListener;
.super Ljava/lang/Object;
.source "AIRLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TIMEOUT_INTERVAL:I = 0x3a98


# instance fields
.field private m_geoObj:Lcom/adobe/air/location/Geolocation;


# direct methods
.method public constructor <init>(Lcom/adobe/air/location/Geolocation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    .line 42
    return-void
.end method

.method private isRegionFullyContained(DDFDDF)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x5

    new-array v8, v0, [F

    move-wide v0, p1

    move-wide v2, p3

    move-wide v4, p6

    move-wide/from16 v6, p8

    .line 196
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 197
    const/4 v0, 0x0

    aget v0, v8, v0

    .line 198
    sub-float v1, p10, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 200
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 25
    .parameter

    .prologue
    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget-object v4, v4, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v18

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v21

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v22

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget-object v4, v4, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v23

    .line 63
    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iput-wide v14, v3, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v16

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v18

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_gpsAltitude:D

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v20

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v21

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_gpsVerticalAccuracy:F

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v22

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_gpsSpeed:F

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget-object v4, v4, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    .line 112
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iput-wide v14, v3, Lcom/adobe/air/location/Geolocation;->m_latitude:D

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v16

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_longitude:D

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v18

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_altitude:D

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v20

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_horizontalAaccuracy:F

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v21

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_verticalAccuracy:F

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v22

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_speed:F

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v23

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_timestamp:J

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v3, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget-wide v4, v4, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v3, v4, v5}, Lcom/adobe/air/location/Geolocation;->updateGeolocationCache(J)V

    .line 133
    :cond_1
    return-void

    .line 75
    :cond_2
    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iput-wide v14, v3, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v16

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-wide/from16 v0, v18

    move-object v2, v3

    iput-wide v0, v2, Lcom/adobe/air/location/Geolocation;->m_networkAltitude:D

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v20

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v21

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_networkVerticalAccuracy:F

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move/from16 v0, v22

    move-object v1, v3

    iput v0, v1, Lcom/adobe/air/location/Geolocation;->m_networkSpeed:F

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget-object v4, v4, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-wide v3, v3, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v5, v0

    iget-wide v5, v5, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget v3, v3, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v4, v0

    iget v4, v4, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-wide v4, v3, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-wide v6, v3, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget v8, v3, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-wide v9, v3, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget-wide v11, v3, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    iget v13, v3, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/adobe/air/location/AIRLocationListener;->isRegionFullyContained(DDFDDF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 137
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 141
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, v2, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 149
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v2, v2, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-ne v1, v0, :cond_3

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 143
    :cond_2
    const-string v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, v2, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v1, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    goto :goto_1
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 161
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 162
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 166
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, v1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 169
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v1, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 178
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-eq v1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v1, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    return-void
.end method
