.class public final Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ExtraFieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnparseableExtraField"
.end annotation


# static fields
.field public static final READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final READ_KEY:I = 0x2

.field public static final SKIP:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final SKIP_KEY:I = 0x1

.field public static final THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final THROW_KEY:I


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 290
    new-instance v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 296
    new-instance v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->SKIP:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 302
    new-instance v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 308
    return-void
.end method


# virtual methods
.method public getKey()I
    .registers 2

    .line 316
    iget v0, p0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    return v0
.end method
