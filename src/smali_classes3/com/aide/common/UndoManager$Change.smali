.class Lcom/aide/common/UndoManager$Change;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Change"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Labcd/ru;
        field = -0x19b4034c46f92e15L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/common/UndoManager$Change;",
            ">;"
        }
    .end annotation
.end field

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x283f931e73c50320L
    .end annotation
.end field

.field public Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x88cafa3ea17120L
    .end annotation
.end field

.field public v5:I
    .annotation runtime Labcd/ru;
        field = 0x24e6169c85adcb05L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x25fa3129fd3faadL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x122037c6e33a6ad1L

    :try_start_6
    const-class v3, Lcom/aide/common/UndoManager$Change;

    const-wide v4, -0x36ad3616a79554e0L  # -1.676009545452982E45

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/common/UndoManager$Change;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/common/_a;

    invoke-direct {v3}, Lcom/aide/common/_a;-><init>()V

    sput-object v3, Lcom/aide/common/UndoManager$Change;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/common/UndoManager$Change;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2dec5c4c65d3ed8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1609af5b929a2d11L  # -2.732965624530253E202

    :try_start_6
    sget-boolean v3, Lcom/aide/common/UndoManager$Change;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/aide/common/UndoManager$Change;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/common/UndoManager$Change;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x685f505a01adbafL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager$Change;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x47836719f02992cL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/common/UndoManager$Change;->Hw:Ljava/lang/String;

    iput p3, p0, Lcom/aide/common/UndoManager$Change;->v5:I
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager$Change;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x47836719f02992cL

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1f8a356fb690c6dfL
    .end annotation

    const-wide v0, -0x4a73fb609af59234L  # -9.360709306151245E-51

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager$Change;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager$Change;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x137cb15dd89bdc30L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager$Change;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5b56252d0bf318dL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/common/UndoManager$Change;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/aide/common/UndoManager$Change;->v5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager$Change;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x5b56252d0bf318dL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method
