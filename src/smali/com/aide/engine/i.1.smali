.class final Lcom/aide/engine/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/FileHighlightings;
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
        "Lcom/aide/engine/FileHighlightings;",
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
.field private FH:Lcom/aide/engine/FileHighlightings;
    .annotation runtime Labcd/ru;
        field = 0x12a9b0bbd1001a40L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/engine/i;

    const-wide v2, 0x6bfad4ca3e8abb51L    # 1.4113581627984473E212

    const-wide v4, -0x267f18f6e6e73c58L    # -1.396685874195757E123

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aide/engine/FileHighlightings;

    invoke-direct {v0}, Lcom/aide/engine/FileHighlightings;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/i;->FH:Lcom/aide/engine/FileHighlightings;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/FileHighlightings;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1cc353be374037a7L
    .end annotation

    const-wide v2, 0x19ee589150db9120L    # 8.927166690410913E-184

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19ee589150db9120L    # 8.927166690410913E-184

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/i;->FH:Lcom/aide/engine/FileHighlightings;

    invoke-virtual {v0, p1}, Lcom/aide/engine/FileHighlightings;->j6(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/aide/engine/i;->FH:Lcom/aide/engine/FileHighlightings;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/i;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/engine/FileHighlightings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aide/engine/FileHighlightings;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x86cef3835110e80L
    .end annotation

    const-wide v2, -0x23ed962f8fac79f9L    # -3.345881552581246E135

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23ed962f8fac79f9L    # -3.345881552581246E135

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-array v0, p1, [Lcom/aide/engine/FileHighlightings;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/i;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/aide/engine/i;->newArray(I)[Lcom/aide/engine/FileHighlightings;

    move-result-object v0

    return-object v0
.end method
