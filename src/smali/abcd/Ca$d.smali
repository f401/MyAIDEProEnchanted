.class Labcd/Ca$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
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
        field = 0x108ce3c5a98e506dL
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

.field public Hw:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = -0x48c27e45a8e06f88L
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

.field final v5:Labcd/Ca;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x25c51ed06d742204L

    const-class v0, Labcd/Ca$d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ca;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3f0f2c4a150b84f0L
    .end annotation

    const-wide v4, 0x5f7954521621a17L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ca$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f7954521621a17L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$d;->v5:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ca$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ca;Labcd/ec;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x3490c6c5aeec7cc0L
    .end annotation

    const-wide v2, 0x2b2b0023932d7b7fL    # 9.644150003927976E-101

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ca$d;->j6:Z

    if-eqz v1, :cond_0

    const-wide v6, 0x2b2b0023932d7b7fL    # 9.644150003927976E-101

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$d;->v5:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    iget-object v6, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    new-instance v7, Labcd/Ca$a;

    invoke-direct {v7, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v5, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    new-instance v6, Labcd/Ca$a;

    invoke-direct {v6, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ca$d;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method


# virtual methods
.method protected j6(Labcd/fc;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3def3705209eb168L
    .end annotation

    const-wide v4, 0x49b94040de39b16fL    # 1.4415766776897432E47

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ca$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x49b94040de39b16fL    # 1.4415766776897432E47

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v1

    :goto_0
    iget-object v0, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ca$a;

    invoke-virtual {v0, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ca$a;

    invoke-virtual {v0, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ca$d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method
