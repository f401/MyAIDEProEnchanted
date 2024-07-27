.class final Lcom/aide/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/EngineSolution$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/aide/engine/EngineSolution$File;",
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
    .registers 6

    const-class v0, Lcom/aide/engine/f;

    const-wide v2, -0x31abfd9fa7154889L    # -2.1577967716784555E69

    const-wide v4, 0x502df5c89e7fc8cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/EngineSolution$File;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x34ec042f10446990L
    .end annotation

    const-wide v2, -0x15140f5d29e16b2dL    # -1.1212777445781046E207

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15140f5d29e16b2dL    # -1.1212777445781046E207

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    invoke-direct {v0, p1}, Lcom/aide/engine/EngineSolution$File;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/f;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/f;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/EngineSolution$File;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aide/engine/EngineSolution$File;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x16995643c693d45L
    .end annotation

    const-wide v2, 0x1c76fb4227888200L    # 1.486690066376918E-171

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c76fb4227888200L    # 1.486690066376918E-171

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-array v0, p1, [Lcom/aide/engine/EngineSolution$File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/f;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/f;->newArray(I)[Lcom/aide/engine/EngineSolution$File;

    move-result-object v0

    return-object v0
.end method
