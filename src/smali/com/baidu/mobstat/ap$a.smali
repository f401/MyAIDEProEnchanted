.class final Lcom/baidu/mobstat/ap$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/mobstat/ap$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "read2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "access0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "access1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "access2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "access3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sync0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sync1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sync2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sync3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "open0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "open1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "open2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "open3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/ap$a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/ap$a;->b:I

    return-void
.end method

.method public static a(BZ)Lcom/baidu/mobstat/ap$a;
    .locals 1

    if-eqz p1, :cond_0

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v0, v0, 0x4

    :goto_0
    invoke-static {v0}, Lcom/baidu/mobstat/ap$a;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    return-object v0

    :cond_0
    and-int/lit8 v0, p0, 0xf

    goto :goto_0
.end method

.method public static a(I)Lcom/baidu/mobstat/ap$a;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    new-instance v0, Lcom/baidu/mobstat/ap$a;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ap$a;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid idx "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ap$a;)I
    .locals 2

    iget v0, p0, Lcom/baidu/mobstat/ap$a;->b:I

    iget v1, p1, Lcom/baidu/mobstat/ap$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/ap$a;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/baidu/mobstat/ap$a;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()B
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/ap$a;->b:I

    int-to-byte v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/baidu/mobstat/ap$a;

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ap$a;->a(Lcom/baidu/mobstat/ap$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/baidu/mobstat/ap$a;

    iget v2, p0, Lcom/baidu/mobstat/ap$a;->b:I

    iget v3, p1, Lcom/baidu/mobstat/ap$a;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/ap$a;->b:I

    return v0
.end method
