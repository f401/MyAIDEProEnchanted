.class Lcom/aide/engine/c$b$h;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/gb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
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
.field private FH:Ljava/util/Hashtable;
    .annotation runtime Labcd/ru;
        field = 0x349f5ae6fa5b692bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/aide/engine/H;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Hashtable;
    .annotation runtime Labcd/ru;
        field = 0x1d02be6368750c4cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/aide/engine/H;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x3dec8ab1cce4c09L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "Lcom/aide/engine/I;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Labcd/_b;
    .annotation runtime Labcd/ru;
        field = -0x1d3abc098d4fc010L
    .end annotation
.end field

.field private gn:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x152b5d72e7a69694L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "Lcom/aide/engine/H;",
            ">;"
        }
    .end annotation
.end field

.field final u7:Lcom/aide/engine/c$b;

.field private v5:Labcd/_b;
    .annotation runtime Labcd/ru;
        field = 0x2d4533d481104488L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$h;

    const-wide v1, -0x189226f2e9d6f7bL  # -1.531285650605921E301

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xd0b76bf107d2b8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x5aecfe342a2ae6bL

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x28dbbf0e08586748L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$h;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x28dbbf0e08586748L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private Hw()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x8ad5acb0211e674L
    .end annotation

    const-wide v0, -0x18d8a274a4f6fa3cL  # -8.133185188265767E188

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    if-nez v2, :cond_1f

    new-instance v2, Labcd/_b;

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    iget-object v3, v3, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v2, v3}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    :cond_1f
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    if-nez v2, :cond_32

    new-instance v2, Labcd/_b;

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    iget-object v3, v3, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v2, v3}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    :cond_32
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    if-eqz v2, :cond_e8

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e5

    new-instance v2, Labcd/wb;

    invoke-direct {v2}, Labcd/wb;-><init>()V

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v3}, Labcd/wb;->j6()V

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    invoke-virtual {v3}, Labcd/_b;->j6()V

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/H;

    iget-object v6, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v6}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v6

    iget-object v6, v6, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v6, v4}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v4

    iget-object v6, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    invoke-virtual {v6, v4}, Labcd/_b;->DW(Labcd/Da;)V

    iget-object v6, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v4}, Labcd/Da;->EQ()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Labcd/wb;->DW(ILjava/lang/Object;)V

    invoke-virtual {v4}, Labcd/Da;->nw()V

    iget-object v5, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {v4}, Labcd/Da;->EQ()I

    move-result v6

    invoke-virtual {v5, v6}, Labcd/wb;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-virtual {v4}, Labcd/Da;->EQ()I

    move-result v5

    iget-object v6, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {v4}, Labcd/Da;->EQ()I

    move-result v4

    invoke-virtual {v6, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_53

    :cond_a2
    invoke-virtual {v4}, Labcd/Da;->EQ()I

    move-result v4

    new-instance v5, Lcom/aide/engine/I;

    invoke-direct {v5}, Lcom/aide/engine/I;-><init>()V

    invoke-virtual {v2, v4, v5}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_53

    :cond_af
    iput-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    invoke-virtual {v2}, Labcd/_b;->j6()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :goto_bd
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->FH()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    invoke-virtual {v2}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/_b;->DW(Labcd/Da;)V

    goto :goto_bd

    :cond_e5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;
    :try_end_e8
    .catchall {:try_start_5 .. :try_end_e8} :catchall_e9

    :cond_e8
    return-void

    :catchall_e9
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_f1

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_f1
    goto :goto_f3

    :goto_f2
    throw v2

    :goto_f3
    goto :goto_f2
.end method


# virtual methods
.method public DW()Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xeb74695c645af20L
    .end annotation

    const-wide v0, -0x196d471e35bdd68L  # -8.428130831069746E300

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :cond_13
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->FH()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/I;

    iget-wide v3, v3, Lcom/aide/engine/I;->v5:J

    iget-object v5, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v2

    invoke-virtual {v5, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/H;

    invoke-interface {v2}, Lcom/aide/engine/H;->getVersion()J

    move-result-wide v5
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_55

    cmp-long v2, v3, v5

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_53
    const/4 v0, 0x1

    return v0

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v2

    :goto_5f
    goto :goto_5e
.end method

.method public DW(Labcd/Da;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1137f83e1171af8L
    .end annotation

    const-wide v0, 0x13d75666f7a82610L  # 4.332689539846628E-213

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/wb;->j6(I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH()Labcd/_b;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x240e693b8320c734L
    .end annotation

    const-wide v0, -0xa7140a036659154L  # -1.846702313964986E258

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH(Labcd/Da;)Ljava/io/Reader;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x507263fb57375455L
    .end annotation

    const-wide v0, 0x3c1ea4a043c2e24dL  # 4.152910443530373E-19

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/I;

    new-instance v3, Ljava/io/CharArrayReader;

    iget-object v4, v2, Lcom/aide/engine/I;->FH:[C

    iget v2, v2, Lcom/aide/engine/I;->Hw:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-object v3

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public Hw(Labcd/Da;)J
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x573ea2c0c9586abfL
    .end annotation

    const-wide v0, -0x2ca07e6cdd5fe411L  # -4.10746648241037E93

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/I;

    iget p1, v2, Lcom/aide/engine/I;->Hw:I
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    int-to-long v0, p1

    return-wide v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6(Labcd/Da;)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4a213c6535cdf9e0L
    .end annotation

    const-wide v0, 0x557baf43a6c8f720L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/I;

    iget-wide v0, v2, Lcom/aide/engine/I;->v5:J
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-wide v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x288cb083160adc80L
    .end annotation

    const-wide v0, -0x19d5772ed3dbfba0L  # -1.4093450114561187E184

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->FH()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/I;

    iget-wide v4, v3, Lcom/aide/engine/I;->v5:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_59

    iget-object v4, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/H;

    invoke-virtual {v2}, Labcd/Da;->Zo()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Lcom/aide/engine/H;->j6(J)V

    :cond_59
    iget-wide v4, v3, Lcom/aide/engine/I;->v5:J

    iget-object v8, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v9

    invoke-virtual {v8, v9}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aide/engine/H;

    invoke-interface {v8}, Lcom/aide/engine/H;->getVersion()J

    move-result-wide v8
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_87

    cmp-long v10, v4, v8

    if-eqz v10, :cond_16

    :try_start_6f
    iget-object v4, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v2

    invoke-virtual {v4, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/H;

    invoke-interface {v2, v3}, Lcom/aide/engine/H;->j6(Lcom/aide/engine/I;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7e} :catch_7f
    .catchall {:try_start_6f .. :try_end_7e} :catchall_87

    goto :goto_16

    :catch_7f
    move-exception v2

    const/4 v2, 0x0

    :try_start_81
    iput v2, v3, Lcom/aide/engine/I;->Hw:I

    iput-wide v6, v3, Lcom/aide/engine/I;->v5:J
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_87

    goto :goto_16

    :cond_86
    return-void

    :catchall_87
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_8f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8f
    goto :goto_91

    :goto_90
    throw v2

    :goto_91
    goto :goto_90
.end method

.method public j6(Ljava/util/Hashtable;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2f4f1f1edc589288L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/aide/engine/H;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x3002aa5a8cbd23d0L  # -2.1229434408005066E77

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/H;

    iget-object v5, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    goto :goto_1b

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method
