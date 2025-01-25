.class public final Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/converter/StringToIntConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zaa"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:I

.field private final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->DW:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->FH:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->j6:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->DW:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->FH:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->j6:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->DW:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$zaa;->FH:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
