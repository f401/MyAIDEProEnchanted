.class Labcd/Ca$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field public FH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x3d9e534a8d6772c9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Labcd/Ca$a;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Labcd/Ca;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xf515f445b7177ddL    # -6.086439903931428E234

    const-class v0, Labcd/Ca$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ca;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x28e8a64adf925ec3L
    .end annotation

    const-wide v4, -0x334ff7b2259ad79L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ca$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x334ff7b2259ad79L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$b;->Hw:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ca$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ca;Labcd/ec;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x88e8d4f09efbL
    .end annotation

    const-wide v2, -0x257d8169f2be6831L    # -1.0015444567837192E128

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ca$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x257d8169f2be6831L    # -1.0015444567837192E128

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$b;->Hw:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v5, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    new-instance v6, Labcd/Ca$a;

    invoke-direct {v6, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ca$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method protected j6(Labcd/fc;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x345ccbcfa700a949L
    .end annotation

    const-wide v2, -0x43ed7b8207f2bdf4L    # -2.509595603928682E-19

    :try_start_0
    sget-boolean v0, Labcd/Ca$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x43ed7b8207f2bdf4L    # -2.509595603928682E-19

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ca$a;

    invoke-virtual {v0, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ca$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method
