.class public Lcom/aide/engine/FindResult$Highlighting;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/FindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Highlighting"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/engine/FindResult$Highlighting;",
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
.field public FH:I

.field public Hw:I

.field public VH:Lcom/aide/engine/m;

.field public Zo:I

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xd365b36ab6a641dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xb2c93c08ee6d0c0L

    :try_start_6
    const-class v3, Lcom/aide/engine/FindResult$Highlighting;

    const-wide v4, 0xacc4b464eb24740L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/FindResult$Highlighting;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/l;

    invoke-direct {v3}, Lcom/aide/engine/l;-><init>()V

    sput-object v3, Lcom/aide/engine/FindResult$Highlighting;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/FindResult$Highlighting;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x11f300d76ee05fd0L  # -1.3101939450747098E222

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/FindResult$Highlighting;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/FindResult$Highlighting;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/FindResult$Highlighting;->Hw:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/FindResult$Highlighting;->v5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/FindResult$Highlighting;->Zo:I

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/FindResult$Highlighting;->DW:Z

    if-eqz v4, :cond_3d

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v3
.end method

.method public constructor <init>(Lcom/aide/engine/m;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FindResult$Highlighting;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xb6725acd2fe24b3L  # -4.555250291672789E253

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    iput p2, p0, Lcom/aide/engine/FindResult$Highlighting;->FH:I

    iput p3, p0, Lcom/aide/engine/FindResult$Highlighting;->Hw:I

    iput p4, p0, Lcom/aide/engine/FindResult$Highlighting;->v5:I

    iput p5, p0, Lcom/aide/engine/FindResult$Highlighting;->Zo:I
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FindResult$Highlighting;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, -0xb6725acd2fe24b3L  # -4.555250291672789E253

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, 0x23ee6a65d54f22dbL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/FindResult$Highlighting;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/FindResult$Highlighting;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FindResult$Highlighting;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x124157d6beb89d0L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/engine/FindResult$Highlighting;->FH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/FindResult$Highlighting;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/FindResult$Highlighting;->v5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/FindResult$Highlighting;->Zo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FindResult$Highlighting;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x124157d6beb89d0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method
