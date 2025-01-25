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
            "Ljava/util/Vector<",
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
    .registers 3

    const-class v0, Labcd/Ca$b;

    const-wide v1, -0xf515f445b7177ddL  # -6.086439903931428E234

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ca;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x28e8a64adf925ec3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x334ff7b2259ad79L

    :try_start_6
    sget-boolean v3, Labcd/Ca$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ca$b;->Hw:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/Ca$b;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public constructor <init>(Labcd/Ca;Labcd/ec;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x88e8d4f09efbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ca$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x257d8169f2be6831L  # -1.0015444567837192E128

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ca$b;->Hw:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    new-instance v3, Labcd/Ca$a;

    invoke-direct {v3, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Ca$b;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x257d8169f2be6831L  # -1.0015444567837192E128

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method


# virtual methods
.method protected j6(Labcd/fc;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x345ccbcfa700a949L
    .end annotation

    const-wide v0, -0x43ed7b8207f2bdf4L  # -2.509595603928682E-19

    :try_start_5
    sget-boolean v2, Labcd/Ca$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_16
    iget-object v3, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    iget-object v3, p0, Labcd/Ca$b;->FH:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Ca$a;

    invoke-virtual {v3, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Ca$b;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method
