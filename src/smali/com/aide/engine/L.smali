.class final Lcom/aide/engine/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/SourceEntity;
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
        "Lcom/aide/engine/SourceEntity;",
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

    const-class v0, Lcom/aide/engine/L;

    const-wide v2, -0x1236934121be4c50L    # -7.179995456406907E220

    const-wide v4, 0x4789ec5dc6a55b67L    # 4.307247994460245E36

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/SourceEntity;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x167e8bb212daf5bcL
    .end annotation

    const-wide v2, 0x7ad122b89813da8L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7ad122b89813da8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    invoke-direct {v0, p1}, Lcom/aide/engine/SourceEntity;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/L;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/L;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/SourceEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aide/engine/SourceEntity;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x72deb386ae5f83fL
    .end annotation

    const-wide v2, 0x50a0e4ce013a60ffL    # 2.5038908623936337E80

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x50a0e4ce013a60ffL    # 2.5038908623936337E80

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-array v0, p1, [Lcom/aide/engine/SourceEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/L;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/L;->newArray(I)[Lcom/aide/engine/SourceEntity;

    move-result-object v0

    return-object v0
.end method
