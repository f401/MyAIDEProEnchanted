.class public Lcom/aide/engine/EngineSolution$File;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/EngineSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/engine/EngineSolution$File;",
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
.field private final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x24de774c7ccb3d09L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x15e0410011fd66e0L
    .end annotation
.end field

.field private final VH:Z
    .annotation runtime Labcd/ru;
        field = -0x160e6e3fa5146e1L
    .end annotation
.end field

.field private final Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x21d3f2bc1403c320L
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1f943d62f70fbbe5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1365a5f255dd5b40L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x224e6e55196fde8L

    :try_start_6
    const-class v3, Lcom/aide/engine/EngineSolution$File;

    const-wide v4, -0x31abfd9fa7154889L  # -2.1577967716784555E69

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/EngineSolution$File;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/f;

    invoke-direct {v3}, Lcom/aide/engine/f;-><init>()V

    sput-object v3, Lcom/aide/engine/EngineSolution$File;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolution$File;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x8f1a60211cf19d8L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/EngineSolution$File;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolution$File;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolution$File;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolution$File;->v5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Lcom/aide/engine/EngineSolution$File;->Zo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    iput-boolean v4, p0, Lcom/aide/engine/EngineSolution$File;->VH:Z
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolution$File;->DW:Z

    if-eqz v4, :cond_41

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution$File;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x25dd5cce20c2bb78L  # -1.5770134045690512E126

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/EngineSolution$File;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/EngineSolution$File;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/EngineSolution$File;->v5:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aide/engine/EngineSolution$File;->Zo:Z

    iput-boolean p5, p0, Lcom/aide/engine/EngineSolution$File;->VH:Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution$File;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x25dd5cce20c2bb78L  # -1.5770134045690512E126

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method static synthetic DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/engine/EngineSolution$File;->Hw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/engine/EngineSolution$File;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/engine/EngineSolution$File;->VH:Z

    return p0
.end method

.method static synthetic Hw(Lcom/aide/engine/EngineSolution$File;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/engine/EngineSolution$File;->Zo:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/engine/EngineSolution$File;->FH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v5(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/engine/EngineSolution$File;->v5:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, -0xc1611179b268d75L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/EngineSolution$File;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolution$File;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution$File;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x342978935b6864d8L  # 2.0288820831698617E-57

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/EngineSolution$File;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution$File;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution$File;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolution$File;->Zo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolution$File;->VH:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution$File;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x342978935b6864d8L  # 2.0288820831698617E-57

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method
