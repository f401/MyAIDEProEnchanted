.class final Lcom/aide/uidesigner/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/Integer;",
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
.field final FH:Ljava/util/List;

.field final Hw:Lcom/aide/uidesigner/s;

.field final VH:Ljava/lang/String;

.field final Zo:Landroid/app/Activity;

.field final gn:Ljava/util/ArrayList;

.field final v5:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x1dd2891a1d211918L  # 5.029304982761782E-165

    const-class v4, Lcom/aide/uidesigner/ia;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Lcom/aide/uidesigner/ia;->FH:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/uidesigner/ia;->Hw:Lcom/aide/uidesigner/s;

    iput-object p3, p0, Lcom/aide/uidesigner/ia;->v5:Lcom/aide/uidesigner/a;

    iput-object p4, p0, Lcom/aide/uidesigner/ia;->Zo:Landroid/app/Activity;

    iput-object p5, p0, Lcom/aide/uidesigner/ia;->VH:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/uidesigner/ia;->gn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Integer;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1ee87e02b03d60e8L
    .end annotation

    const-wide v0, -0x140ddf3d0ad99158L  # -9.535561115813075E211

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ia;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ia;->FH:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Lcom/aide/uidesigner/ia;->Hw:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/ia;->v5:Lcom/aide/uidesigner/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_59

    :cond_29
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_5a

    if-eqz v3, :cond_32

    const-string v3, "其他..."

    goto :goto_34

    .line 99
    :cond_32
    const-string v3, "other..."

    .line 0
    :goto_34
    :try_start_34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/aide/uidesigner/ia;->Zo:Landroid/app/Activity;

    iget-object v3, p0, Lcom/aide/uidesigner/ia;->Hw:Lcom/aide/uidesigner/s;

    iget-object v4, p0, Lcom/aide/uidesigner/ia;->v5:Lcom/aide/uidesigner/a;

    iget-object v5, p0, Lcom/aide/uidesigner/ia;->VH:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_59

    :cond_46
    iget-object v2, p0, Lcom/aide/uidesigner/ia;->Hw:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/ia;->v5:Lcom/aide/uidesigner/a;

    iget-object v4, p0, Lcom/aide/uidesigner/ia;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_5a

    :goto_59
    return-void

    .line 99
    :catchall_5a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ia;->DW:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/ia;->j6(Ljava/lang/Integer;)V

    return-void
.end method
