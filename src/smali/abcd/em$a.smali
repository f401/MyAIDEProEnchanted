.class Labcd/em$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x20127ccf577429d0L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x641f4a7110d0f07L
    .end annotation
.end field

.field private Zo:Labcd/em$a;
    .annotation runtime Labcd/ru;
        field = 0x2f25de80bbc9dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private v5:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0xd358e57b8f74e00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x4824e567fe07778L    # -7.064875057481508E286

    const-class v0, Labcd/em$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x8b0dc151465ba3fL
    .end annotation

    const-wide v4, 0x1393d42151877203L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1393d42151877203L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/dm;)V
    .registers 8

    const-wide v4, 0x15e861cad7e82bb0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15e861cad7e82bb0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/em$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/em$a;)I
    .registers 2

    iget v0, p0, Labcd/em$a;->Hw:I

    return v0
.end method

.method static synthetic DW(Labcd/em$a;I)I
    .registers 2

    iput p1, p0, Labcd/em$a;->Hw:I

    return p1
.end method

.method static synthetic FH(Labcd/em$a;)Labcd/em$a;
    .registers 2

    iget-object v0, p0, Labcd/em$a;->Zo:Labcd/em$a;

    return-object v0
.end method

.method static synthetic Hw(Labcd/em$a;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/em$a;->v5:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/em$a;)I
    .registers 2

    iget v0, p0, Labcd/em$a;->FH:I

    return v0
.end method

.method static synthetic j6(Labcd/em$a;I)I
    .registers 2

    iput p1, p0, Labcd/em$a;->FH:I

    return p1
.end method

.method static synthetic j6(Labcd/em$a;Labcd/em$a;)Labcd/em$a;
    .registers 2

    iput-object p1, p0, Labcd/em$a;->Zo:Labcd/em$a;

    return-object p1
.end method

.method static synthetic j6(Labcd/em$a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Labcd/em$a;->v5:Ljava/lang/Object;

    return-object p1
.end method
