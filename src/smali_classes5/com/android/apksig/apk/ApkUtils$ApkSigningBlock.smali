.class public Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/apk/ApkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkSigningBlock"
.end annotation


# instance fields
.field private final mContents:Lcom/android/apksig/util/DataSource;

.field private final mStartOffsetInApk:J


# direct methods
.method public constructor <init>(JLcom/android/apksig/util/DataSource;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->mStartOffsetInApk:J

    iput-object p3, p0, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->mContents:Lcom/android/apksig/util/DataSource;

    return-void
.end method


# virtual methods
.method public getContents()Lcom/android/apksig/util/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->mContents:Lcom/android/apksig/util/DataSource;

    return-object v0
.end method

.method public getStartOffset()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->mStartOffsetInApk:J

    return-wide v0
.end method
