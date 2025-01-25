.class final Lcom/aide/ui/scm/va;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/GitStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aide/ui/scm/GitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1fc286d494a7ef4bL  # -3.9517259720833486E155

    const-wide v2, -0x330cc6fa04a2b1b8L  # -4.942362290466362E62

    const-class v4, Lcom/aide/ui/scm/va;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/ui/scm/GitStatus;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x31ee9c526fce2368L
    .end annotation

    const-wide v0, -0xd03070a20afb080L  # -7.913023880586055E245

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/GitStatus;

    invoke-direct {v2, p1}, Lcom/aide/ui/scm/GitStatus;-><init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/va;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/va;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/ui/scm/GitStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/aide/ui/scm/GitStatus;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3bfc75b570a92bfL
    .end annotation

    const-wide v0, -0x4a45399a252552efL  # -7.156325288179054E-50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-array p1, p1, [Lcom/aide/ui/scm/GitStatus;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/va;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/va;->newArray(I)[Lcom/aide/ui/scm/GitStatus;

    move-result-object p1

    return-object p1
.end method
