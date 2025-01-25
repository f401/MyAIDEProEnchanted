.class final Lcom/aide/engine/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/FindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aide/engine/FindResult;",
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

    const-wide v0, 0x3956850e2dd01e78L  # 1.7348582500012945E-32

    const-wide v2, -0x14fc0565bb7d8af3L  # -3.2071476936135774E207

    const-class v4, Lcom/aide/engine/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/FindResult;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x43f306ad5d48d600L
    .end annotation

    const-wide v0, 0x16de738cd03b22f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/FindResult;

    invoke-direct {v2, p1}, Lcom/aide/engine/FindResult;-><init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/k;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/engine/k;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/FindResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/aide/engine/FindResult;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1202bca4583d7a33L
    .end annotation

    const-wide v0, -0x42c87c62337916e9L  # -8.353895911256489E-14

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-array p1, p1, [Lcom/aide/engine/FindResult;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/k;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/engine/k;->newArray(I)[Lcom/aide/engine/FindResult;

    move-result-object p1

    return-object p1
.end method
