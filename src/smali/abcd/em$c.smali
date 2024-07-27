.class Labcd/em$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;"
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
.field private FH:Labcd/em$a;
    .annotation runtime Labcd/ru;
        field = 0xd66bf44494fb9ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x1ad00018a7d6a614L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xdc3f6e990710d44L

    const-class v0, Labcd/em$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/em$a;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2178dfba6a1551fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lem$a",
            "<TT;>;I)V"
        }
    .end annotation

    const-wide v2, -0x35b7a816f7f1790cL    # -7.115583653695245E49

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em$c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x35b7a816f7f1790cL    # -7.115583653695245E49

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/em$c;->FH:Labcd/em$a;

    iput p2, p0, Labcd/em$c;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/em$c;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x21297326e4c8e57fL
    .end annotation

    const-wide v2, -0x46f0a612f99cc1a3L    # -7.547544424441238E-34

    :try_start_0
    sget-boolean v0, Labcd/em$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x46f0a612f99cc1a3L    # -7.547544424441238E-34

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;

    if-eqz v0, :cond_4

    iget v0, p0, Labcd/em$c;->Hw:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v0}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v0

    iget v1, p0, Labcd/em$c;->Hw:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v0}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v0

    iget v1, p0, Labcd/em$c;->Hw:I

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v0}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v0

    iput-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$c;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x28dbb836bbd7d6d0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v2, 0x231826da672b124cL

    :try_start_0
    sget-boolean v0, Labcd/em$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x231826da672b124cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v0}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v1}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v1

    iput-object v1, p0, Labcd/em$c;->FH:Labcd/em$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
