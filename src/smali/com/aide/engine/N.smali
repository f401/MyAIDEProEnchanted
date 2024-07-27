.class final Lcom/aide/engine/N;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/SyntaxError;
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
        "Lcom/aide/engine/SyntaxError;",
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

    const-class v0, Lcom/aide/engine/N;

    const-wide v2, 0x38f63ef623cc47e5L    # 2.6777580209117926E-34

    const-wide v4, -0x32c8490fa6f33f58L    # -9.755622616563667E63

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/SyntaxError;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x53f9ac607e7528d7L
    .end annotation

    const-wide v2, -0x19474f1b18b19b70L    # -6.714534068006646E186

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/N;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19474f1b18b19b70L    # -6.714534068006646E186

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SyntaxError;

    invoke-direct {v0, p1}, Lcom/aide/engine/SyntaxError;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/N;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/N;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aide/engine/SyntaxError;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14cf969ba83f944L
    .end annotation

    const-wide v2, -0x28fa247435caaddL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/N;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28fa247435caaddL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-array v0, p1, [Lcom/aide/engine/SyntaxError;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/N;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/N;->newArray(I)[Lcom/aide/engine/SyntaxError;

    move-result-object v0

    return-object v0
.end method
