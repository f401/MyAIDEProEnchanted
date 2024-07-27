.class Labcd/Qk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Sk;->j6(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/Sk$a;",
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
.field final FH:Labcd/Sk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Qk;

    const-wide v2, -0x714e171a42b7e70L

    const-wide v4, -0x381323feb1aea937L    # -3.068857254258783E38

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Sk;)V
    .registers 2

    iput-object p1, p0, Labcd/Qk;->FH:Labcd/Sk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/Sk$a;

    check-cast p2, Labcd/Sk$a;

    invoke-virtual {p0, p1, p2}, Labcd/Qk;->j6(Labcd/Sk$a;Labcd/Sk$a;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Sk$a;Labcd/Sk$a;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14866c1b9dc8725L
    .end annotation

    const-wide v2, -0x2193a71685b42ae3L    # -7.079454557974238E146

    :try_start_0
    sget-boolean v0, Labcd/Qk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2193a71685b42ae3L    # -7.079454557974238E146

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget v0, v0, Labcd/Sk$b;->EQ:I

    iget-object v1, p2, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget v1, v1, Labcd/Sk$b;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Qk;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
