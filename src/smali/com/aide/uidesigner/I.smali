.class final Lcom/aide/uidesigner/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/L;->FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/I;

    const-wide v2, -0x1dd98fa673d10c90L    # -6.460833633665477E164

    const-wide v4, 0x301b2a7b9ecef880L    # 5.86524281920093E-77

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/I;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/I;->Hw:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2aa7b903dcfa0440L
    .end annotation

    const-wide v2, -0x16b07b23f86a7d23L    # -1.8848610446521007E199

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16b07b23f86a7d23L    # -1.8848610446521007E199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/I;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->Hw()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1eeabfecc648f5dL
    .end annotation

    const-wide v2, -0x133dbad2f4f45540L    # -7.87282596203519E215

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x133dbad2f4f45540L    # -7.87282596203519E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1aadd64f98ba0ed4L
    .end annotation

    const-wide v2, -0x127512a045d08fd9L    # -4.752681692925516E219

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x127512a045d08fd9L    # -4.752681692925516E219

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0d06c4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1139eece6f49b139L
    .end annotation

    const-wide v2, -0x1f3ee1c71ba6c8cL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f3ee1c71ba6c8cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_add:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x10d674329593a450L
    .end annotation

    const-wide v4, -0x37bb3986e874528bL    # -1.4138926454131766E40

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37bb3986e874528bL    # -1.4138926454131766E40

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/uidesigner/I;->Hw:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5728 "

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aide/uidesigner/I;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " \u540e\u9762\u6dfb\u52a0..."

    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/aide/uidesigner/H;

    invoke-direct {v2, p0}, Lcom/aide/uidesigner/H;-><init>(Lcom/aide/uidesigner/I;)V

    invoke-static {v1, v0, v2}, Lcom/aide/uidesigner/Ka;->FH(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Add behind "

    goto :goto_0

    :cond_2
    const-string v0, "..."

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/I;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
