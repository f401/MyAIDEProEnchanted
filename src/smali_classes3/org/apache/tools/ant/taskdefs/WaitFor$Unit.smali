.class public Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "WaitFor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/WaitFor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unit"
.end annotation


# static fields
.field public static final DAY:Ljava/lang/String; = "day"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final MILLISECOND:Ljava/lang/String; = "millisecond"

.field public static final MINUTE:Ljava/lang/String; = "minute"

.field public static final SECOND:Ljava/lang/String; = "second"

.field private static final UNITS:[Ljava/lang/String;

.field public static final WEEK:Ljava/lang/String; = "week"


# instance fields
.field private timeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 239
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "millisecond"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "second"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "week"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->UNITS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 246
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    .line 247
    const-string v1, "millisecond"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    const-string v1, "second"

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    const-string v1, "minute"

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    const-string v1, "hour"

    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    const-string v1, "day"

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    const-string v1, "week"

    const-wide/32 v2, 0x240c8400

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public getMultiplier()J
    .registers 3

    .line 260
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->timeTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 270
    sget-object v0, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->UNITS:[Ljava/lang/String;

    return-object v0
.end method
