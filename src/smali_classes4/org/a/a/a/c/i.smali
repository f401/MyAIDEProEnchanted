.class Lorg/a/a/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/a/a/a/c/j;
    .registers 6

    new-instance v0, Lorg/a/a/a/c/j;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lorg/a/a/a/c/j;-><init>([I)V

    return-object v0
.end method

.method public a(I)[Lorg/a/a/a/c/j;
    .registers 3

    new-array v0, p1, [Lorg/a/a/a/c/j;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/i;->a(Landroid/os/Parcel;)Lorg/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/i;->a(I)[Lorg/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
