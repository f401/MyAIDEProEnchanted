.class public Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "SizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/selectors/SizeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteUnits"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 252
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "K"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "kilo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KILO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Ki"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "KI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ki"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "kibi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KIBI"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mega"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MEGA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MI"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mebi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MEBI"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "giga"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "GIGA"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Gi"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GI"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gi"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "gibi"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GIBI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "tera"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Ti"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TI"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "tebi"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "TEBI"

    aput-object v2, v0, v1

    return-object v0
.end method
