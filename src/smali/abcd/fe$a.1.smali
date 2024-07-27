.class Labcd/fe$a;
.super Labcd/sc;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final u7:Labcd/fe;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1749d3301d06f25bL

    const-class v0, Labcd/fe$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/fe;Labcd/La;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2b592559a910ac0L
    .end annotation

    const-wide v2, -0x9b9983a5a270255L    # -5.511859875939957E261

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/fe$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9b9983a5a270255L    # -5.511859875939957E261

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/fe$a;->u7:Labcd/fe;

    invoke-direct {p0, p2}, Labcd/sc;-><init>(Labcd/La;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/fe$a;->gn:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public FH(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x21684f28b666b7c9L
    .end annotation

    const-wide v2, 0xae92d1df68c5340L

    :try_start_0
    sget-boolean v0, Labcd/fe$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xae92d1df68c5340L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/fe$a;->u7:Labcd/fe;

    invoke-static {v0}, Labcd/fe;->j6(Labcd/fe;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Sa;->vy(I)I

    move-result v0

    iget-object v1, p0, Labcd/fe$a;->u7:Labcd/fe;

    invoke-static {v1}, Labcd/fe;->j6(Labcd/fe;)Labcd/Sa;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/Sa;->BT(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Labcd/fe$a;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/fe$a;->gn:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6bcc5bd8b63bee80L
    .end annotation

    const-wide v2, 0x1f990eecdc63b409L

    :try_start_0
    sget-boolean v0, Labcd/fe$a;->VH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1f990eecdc63b409L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Labcd/sc;->j6(C)V

    invoke-super {p0, p1, p2}, Labcd/sc;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/fe$a;->gn:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
