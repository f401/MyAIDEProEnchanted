.class final Lcom/aide/engine/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/CharArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aide/engine/service/CharArray;",
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


# instance fields
.field private FH:Lcom/aide/engine/service/CharArray;
    .annotation runtime Labcd/ru;
        field = 0x1ea6530639af8320L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x4f4636247023f07cL  # 7.848862419138488E73

    const-wide v2, -0x1319c761205d3c39L  # -3.83013343332891E216

    const-class v4, Lcom/aide/engine/service/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aide/engine/service/CharArray;

    invoke-direct {v0}, Lcom/aide/engine/service/CharArray;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/service/a;->FH:Lcom/aide/engine/service/CharArray;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/service/CharArray;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x293162c25fc4501bL
    .end annotation

    const-wide v0, 0xda90c2d4440778L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/a;->FH:Lcom/aide/engine/service/CharArray;

    invoke-virtual {v2, p1}, Lcom/aide/engine/service/CharArray;->j6(Landroid/os/Parcel;)V

    iget-object p1, p0, Lcom/aide/engine/service/a;->FH:Lcom/aide/engine/service/CharArray;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object p1

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/a;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/engine/service/a;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/service/CharArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/aide/engine/service/CharArray;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd07bebbdd4f0b20L
    .end annotation

    const-wide v0, 0x155a444b1cafe663L  # 8.181438389986765E-206

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-array p1, p1, [Lcom/aide/engine/service/CharArray;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/a;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/engine/service/a;->newArray(I)[Lcom/aide/engine/service/CharArray;

    move-result-object p1

    return-object p1
.end method
