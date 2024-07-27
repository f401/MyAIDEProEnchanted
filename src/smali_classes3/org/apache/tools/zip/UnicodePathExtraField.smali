.class public Lorg/apache/tools/zip/UnicodePathExtraField;
.super Lorg/apache/tools/zip/AbstractUnicodeExtraField;
.source "UnicodePathExtraField.java"


# static fields
.field public static final UPATH_ID:Lorg/apache/tools/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const/16 v1, 0x7075

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 49
    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 64
    sget-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method
