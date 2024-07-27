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
            "Ljava/util/Hashtable",
            "<",
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
            "Ljava/util/Hashtable",
            "<",
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
            "Lwb",
            "<",
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
            "Lwb",
            "<",
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
    .registers 4

    const-wide v2, -0x189226f2e9d6f7bL    # -1.531285650605921E301

    const-class v0, Lcom/aide/engine/c$b$h;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xd0b76bf107d2b8L
    .end annotation

    const-wide v4, -0x5aecfe342a2ae6bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5aecfe342a2ae6bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, -0x28dbbf0e08586748L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28dbbf0e08586748L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$h;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private Hw()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x8ad5acb0211e674L
    .end annotation

    const-wide v6, -0x18d8a274a4f6fa3cL    # -8.133185188265767E188

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18d8a274a4f6fa3cL    # -8.133185188265767E188

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    if-nez v0, :cond_1

    new-instance v0, Labcd/_b;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v0, v1}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    :cond_1
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    if-nez v0, :cond_2

    new-instance v0, Labcd/_b;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v0, v1}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v2, Labcd/wb;

    invoke-direct {v2}, Labcd/wb;-><init>()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    invoke-virtual {v0}, Labcd/_b;->j6()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/H;

    iget-object v4, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4, v0}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v0

    iget-object v4, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;

    invoke-virtual {v4, v0}, Labcd/_b;->DW(Labcd/Da;)V

    iget-object v4, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    invoke-virtual {v0}, Labcd/Da;->nw()V

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v4

    invoke-virtual {v1, v4}, Labcd/wb;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v1

    iget-object v4, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v0

    invoke-virtual {v4, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Labcd/Da;->EQ()I

    move-result v0

    new-instance v1, Lcom/aide/engine/I;

    invoke-direct {v1}, Lcom/aide/engine/I;-><init>()V

    invoke-virtual {v2, v0, v1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iput-object v2, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    invoke-virtual {v0}, Labcd/_b;->j6()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_1
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v0}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v0

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->v5:Labcd/_b;

    invoke-virtual {v0}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/_b;->DW(Labcd/Da;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xeb74695c645af20L
    .end annotation

    const-wide v4, -0x196d471e35bdd68L    # -8.428130831069746E300

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x196d471e35bdd68L    # -8.428130831069746E300

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :cond_1
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v0}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v0

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/I;

    iget-wide v2, v0, Lcom/aide/engine/I;->v5:J

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v1}, Labcd/Da;->EQ()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/H;

    invoke-interface {v0}, Lcom/aide/engine/H;->getVersion()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public DW(Labcd/Da;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1137f83e1171af8L
    .end annotation

    const-wide v2, 0x13d75666f7a82610L    # 4.332689539846628E-213

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13d75666f7a82610L    # 4.332689539846628E-213

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/wb;->j6(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/_b;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x240e693b8320c734L
    .end annotation

    const-wide v2, -0xa7140a036659154L    # -1.846702313964986E258

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa7140a036659154L    # -1.846702313964986E258

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->Zo:Labcd/_b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Da;)Ljava/io/Reader;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x507263fb57375455L
    .end annotation

    const-wide v4, 0x3c1ea4a043c2e24dL    # 4.152910443530373E-19

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c1ea4a043c2e24dL    # 4.152910443530373E-19

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/I;

    new-instance v1, Ljava/io/CharArrayReader;

    iget-object v2, v0, Lcom/aide/engine/I;->FH:[C

    const/4 v3, 0x0

    iget v0, v0, Lcom/aide/engine/I;->Hw:I

    invoke-direct {v1, v2, v3, v0}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Da;)J
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x573ea2c0c9586abfL
    .end annotation

    const-wide v2, -0x2ca07e6cdd5fe411L    # -4.10746648241037E93

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ca07e6cdd5fe411L    # -4.10746648241037E93

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/I;

    iget v0, v0, Lcom/aide/engine/I;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4a213c6535cdf9e0L
    .end annotation

    const-wide v2, 0x557baf43a6c8f720L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x557baf43a6c8f720L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    invoke-virtual {p1}, Labcd/Da;->EQ()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/I;

    iget-wide v0, v0, Lcom/aide/engine/I;->v5:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x288cb083160adc80L
    .end annotation

    const-wide/16 v10, 0x0

    const-wide v8, -0x19d5772ed3dbfba0L    # -1.4093450114561187E184

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19d5772ed3dbfba0L    # -1.4093450114561187E184

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$h;->Hw()V

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->u7:Lcom/aide/engine/c$b;

    invoke-static {v0}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v0

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v2

    iget-object v0, p0, Lcom/aide/engine/c$b$h;->VH:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/I;

    iget-wide v4, v0, Lcom/aide/engine/I;->v5:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/H;

    invoke-virtual {v2}, Labcd/Da;->Zo()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/aide/engine/H;->j6(J)V

    :cond_2
    iget-wide v4, v0, Lcom/aide/engine/I;->v5:J

    iget-object v1, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/H;

    invoke-interface {v1}, Lcom/aide/engine/H;->getVersion()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/aide/engine/c$b$h;->gn:Labcd/wb;

    invoke-virtual {v2}, Labcd/Da;->EQ()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/H;

    invoke-interface {v1, v0}, Lcom/aide/engine/H;->j6(Lcom/aide/engine/I;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    iput v1, v0, Lcom/aide/engine/I;->Hw:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/aide/engine/I;->v5:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6(Ljava/util/Hashtable;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f4f1f1edc589288L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/aide/engine/H;",
            ">;)V"
        }
    .end annotation

    const-wide v6, -0x3002aa5a8cbd23d0L    # -2.1229434408005066E77

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/c$b$h;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x3002aa5a8cbd23d0L    # -2.1229434408005066E77

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->Hw:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/H;

    iget-object v5, p0, Lcom/aide/engine/c$b$h;->FH:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$h;->DW:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2

    :cond_2
    return-void
.end method
