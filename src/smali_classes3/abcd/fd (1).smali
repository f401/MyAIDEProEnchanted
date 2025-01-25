.class Labcd/fd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gd;->DW(Labcd/Da;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/Ia;",
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
.field final FH:Labcd/gd;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x41e031d7867c2573L  # -1.8513124141856157E-9

    const-wide v2, 0xf5ecbe1c21d4730L  # 1.210719489932222E-234

    const-class v4, Labcd/fd;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gd;)V
    .registers 2

    iput-object p1, p0, Labcd/fd;->FH:Labcd/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Ia;

    check-cast p2, Labcd/Ia;

    invoke-virtual {p0, p1, p2}, Labcd/fd;->j6(Labcd/Ia;Labcd/Ia;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Ia;Labcd/Ia;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1e006f7e7a1e5123L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/fd;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6b3eb5cd82a3775fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    invoke-virtual {p2}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v1

    if-eq v0, v1, :cond_28

    invoke-virtual {p1}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v0

    invoke-virtual {p2}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->EQ()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_28
    invoke-virtual {p1}, Labcd/Ia;->J8()I

    move-result v0

    invoke-virtual {p2}, Labcd/Ia;->J8()I

    move-result p1
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_32

    sub-int/2addr v0, p1

    return v0

    :catchall_32
    move-exception v0

    sget-boolean v1, Labcd/fd;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x6b3eb5cd82a3775fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method
