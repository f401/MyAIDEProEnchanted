.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unit"
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final MILLISECOND:Ljava/lang/String; = "millisecond"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final UNITS:[Ljava/lang/String;

.field private static final WEEK:Ljava/lang/String; = "week"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private calendarFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 678
    const/16 v0, 0x8

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

    const/4 v1, 0x6

    const-string v2, "month"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "year"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->UNITS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 684
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    .line 685
    const-string v1, "millisecond"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "second"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "hour"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "day"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "week"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method


# virtual methods
.method public getCalendarField()I
    .registers 3

    .line 701
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->calendarFields:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 707
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->UNITS:[Ljava/lang/String;

    return-object v0
.end method
