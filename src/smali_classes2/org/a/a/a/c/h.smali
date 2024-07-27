.class public Lorg/a/a/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;

.field public static final b:Lorg/a/a/a/c/h;

.field static c:[Lorg/a/a/a/c/h;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I


# instance fields
.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lorg/a/a/a/c/i;

    invoke-direct {v0}, Lorg/a/a/a/c/i;-><init>()V

    sput-object v0, Lorg/a/a/a/c/h;->a:Landroid/os/Parcelable$Creator;

    new-instance v0, Lorg/a/a/a/c/h;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/c/h;-><init>(II)V

    sput-object v0, Lorg/a/a/a/c/h;->b:Lorg/a/a/a/c/h;

    const/16 v0, 0x3e9

    new-array v0, v0, [Lorg/a/a/a/c/h;

    sput-object v0, Lorg/a/a/a/c/h;->c:[Lorg/a/a/a/c/h;

    sput v3, Lorg/a/a/a/c/h;->f:I

    sput v3, Lorg/a/a/a/c/h;->g:I

    sput v3, Lorg/a/a/a/c/h;->h:I

    sput v3, Lorg/a/a/a/c/h;->i:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/a/c/h;->d:I

    iput p2, p0, Lorg/a/a/a/c/h;->e:I

    return-void
.end method

.method public static a(II)Lorg/a/a/a/c/h;
    .registers 4

    if-ne p0, p1, :cond_0

    if-ltz p0, :cond_0

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Lorg/a/a/a/c/h;

    invoke-direct {v0, p0, p1}, Lorg/a/a/a/c/h;-><init>(II)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/a/a/a/c/h;->c:[Lorg/a/a/a/c/h;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    sget-object v0, Lorg/a/a/a/c/h;->c:[Lorg/a/a/a/c/h;

    new-instance v1, Lorg/a/a/a/c/h;

    invoke-direct {v1, p0, p0}, Lorg/a/a/a/c/h;-><init>(II)V

    aput-object v1, v0, p0

    :cond_2
    sget-object v0, Lorg/a/a/a/c/h;->c:[Lorg/a/a/a/c/h;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/a/a/a/c/h;)Z
    .registers 4

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    iget v1, p1, Lorg/a/a/a/c/h;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/a/a/a/c/h;->e:I

    iget v1, p1, Lorg/a/a/a/c/h;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/a/a/a/c/h;)Z
    .registers 4

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    iget v1, p1, Lorg/a/a/a/c/h;->e:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/a/a/a/c/h;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/h;->a(Lorg/a/a/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/h;->b(Lorg/a/a/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Lorg/a/a/a/c/h;)Z
    .registers 4

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    iget v1, p1, Lorg/a/a/a/c/h;->e:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/a/a/a/c/h;->e:I

    iget v1, p1, Lorg/a/a/a/c/h;->d:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lorg/a/a/a/c/h;)Lorg/a/a/a/c/h;
    .registers 5

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    iget v1, p1, Lorg/a/a/a/c/h;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/c/h;->e:I

    iget v2, p1, Lorg/a/a/a/c/h;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/a/a/a/c/h;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/a/a/a/c/h;

    iget v1, p0, Lorg/a/a/a/c/h;->d:I

    iget v2, p1, Lorg/a/a/a/c/h;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/a/a/a/c/h;->e:I

    iget v2, p1, Lorg/a/a/a/c/h;->e:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    add-int/lit16 v0, v0, 0x2c9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/a/a/a/c/h;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/a/c/h;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/c/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lorg/a/a/a/c/h;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/a/a/a/c/h;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
