.class public Lcom/google/android/gms/common/Feature;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final FH:J

.field private final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/l;

    invoke-direct {v0}, Lcom/google/android/gms/common/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/Feature;->j6:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/Feature;->DW:I

    iput-wide p3, p0, Lcom/google/android/gms/common/Feature;->FH:J

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/Feature;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public FH()J
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/common/Feature;->FH:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    iget v0, p0, Lcom/google/android/gms/common/Feature;->DW:I

    int-to-long v0, v0

    :cond_b
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/common/Feature;

    if-eqz v0, :cond_34

    check-cast p1, Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/common/Feature;->DW:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
