.class public final Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeExtraFieldPolicy"
.end annotation


# static fields
.field public static final ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field public static final NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field public static final NOT_ENCODEABLE:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1695
    new-instance v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "always"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 1700
    new-instance v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 1706
    new-instance v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "not encodeable"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NOT_ENCODEABLE:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    .line 1712
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1715
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    return-object v0
.end method
