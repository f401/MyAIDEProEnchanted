.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Lcom/google/android/gms/common/data/DataHolder$a;


# instance fields
.field private final DW:I

.field private EQ:Z

.field private final FH:[Ljava/lang/String;

.field private Hw:Landroid/os/Bundle;

.field private final VH:Landroid/os/Bundle;

.field private final Zo:I

.field private gn:[I

.field private tp:Z

.field private u7:I

.field private final v5:[Landroid/database/CursorWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/data/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/b;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->j6:Lcom/google/android/gms/common/data/DataHolder$a;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->tp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EQ:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->DW:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->FH:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->Zo:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->VH:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final DW()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->VH:Landroid/os/Bundle;

    return-object v0
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Zo:I

    return v0
.end method

.method public final Hw()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Hw:Landroid/os/Bundle;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->FH:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->Hw:Landroid/os/Bundle;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->gn:[I

    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    array-length v3, v2

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->gn:[I

    aput v1, v3, v0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v1, v2

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3e
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->u7:I

    return-void
.end method

.method public final close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->tp:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->tp:Z

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method

.method protected final finalize()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EQ:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit16 v1, v1, 0xb2

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DataBuffer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3f

    :cond_3b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_3f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->tp:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->FH:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->v5:[Landroid/database/CursorWindow;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->FH()I

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->DW()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->DW:I

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_32
    return-void
.end method
