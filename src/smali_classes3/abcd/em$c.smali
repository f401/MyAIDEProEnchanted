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
        "Ljava/util/Enumeration<",
        "TT;>;"
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
            "Lem$a<",
            "TT;>;"
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
    .registers 3

    const-class v0, Labcd/em$c;

    const-wide v1, -0xdc3f6e990710d44L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/em$a;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2178dfba6a1551fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lem$a<",
            "TT;>;I)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/em$c;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x35b7a816f7f1790cL  # -7.115583653695245E49

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/em$c;->FH:Labcd/em$a;

    iput p2, p0, Labcd/em$c;->Hw:I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/em$c;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x35b7a816f7f1790cL  # -7.115583653695245E49

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x21297326e4c8e57fL
    .end annotation

    const-wide v0, -0x46f0a612f99cc1a3L  # -7.547544424441238E-34

    :try_start_5
    sget-boolean v2, Labcd/em$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget-object v2, p0, Labcd/em$c;->FH:Labcd/em$a;

    if-eqz v2, :cond_33

    iget v3, p0, Labcd/em$c;->Hw:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    invoke-static {v2}, Labcd/em$a;->j6(Labcd/em$a;)I

    move-result v2

    iget v3, p0, Labcd/em$c;->Hw:I

    if-gt v2, v3, :cond_28

    iget-object v2, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v2}, Labcd/em$a;->DW(Labcd/em$a;)I

    move-result v2

    iget v3, p0, Labcd/em$c;->Hw:I

    if-lt v2, v3, :cond_28

    goto :goto_31

    :cond_28
    iget-object v2, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v2}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v2

    iput-object v2, p0, Labcd/em$c;->FH:Labcd/em$a;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_35

    goto :goto_c

    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0

    :cond_33
    const/4 v0, 0x0

    return v0

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/em$c;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    goto :goto_3f

    :goto_3e
    throw v2

    :goto_3f
    goto :goto_3e
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

    const-wide v0, 0x231826da672b124cL

    :try_start_5
    sget-boolean v2, Labcd/em$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v2}, Labcd/em$a;->Hw(Labcd/em$a;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Labcd/em$c;->FH:Labcd/em$a;

    invoke-static {v3}, Labcd/em$a;->FH(Labcd/em$a;)Labcd/em$a;

    move-result-object v3

    iput-object v3, p0, Labcd/em$c;->FH:Labcd/em$a;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v2

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/em$c;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
