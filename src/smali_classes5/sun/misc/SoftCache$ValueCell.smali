.class Lsun/misc/SoftCache$ValueCell;
.super Ljava/lang/ref/SoftReference;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueCell"
.end annotation


# static fields
.field private static INVALID_KEY:Ljava/lang/Object;

.field private static dropped:I


# instance fields
.field private key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4

    .line 124
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 125
    iput-object p1, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lsun/misc/SoftCache$ValueCell;)Z
    .registers 2

    .line 118
    invoke-direct {p0}, Lsun/misc/SoftCache$ValueCell;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;
    .registers 2

    .line 118
    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$210()I
    .registers 2

    .line 118
    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lsun/misc/SoftCache$ValueCell;->dropped:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 3

    .line 118
    invoke-static {p0, p1}, Lsun/misc/SoftCache$ValueCell;->strip(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .registers 4

    .line 118
    invoke-static {p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .registers 4

    .line 131
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 132
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lsun/misc/SoftCache$ValueCell;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_3
.end method

.method private drop()V
    .registers 2

    .line 148
    invoke-super {p0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 149
    sget-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    iput-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    .line 150
    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    .line 151
    return-void
.end method

.method private isValid()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    sget-object v1, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static strip(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 3

    .line 136
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 140
    :cond_3
    :goto_3
    return-object v0

    .line 137
    :cond_4
    check-cast p0, Lsun/misc/SoftCache$ValueCell;

    .line 138
    invoke-virtual {p0}, Lsun/misc/SoftCache$ValueCell;->get()Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lsun/misc/SoftCache$ValueCell;->drop()V

    goto :goto_3
.end method
