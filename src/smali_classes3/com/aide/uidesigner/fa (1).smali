.class final Lcom/aide/uidesigner/fa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
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
.field final FH:Ljava/util/ArrayList;

.field final Hw:Lcom/aide/uidesigner/s;

.field final Zo:[Ljava/lang/String;

.field final v5:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x1dd1fae52c61dc35L  # 4.878580855173508E-165

    const-class v4, Lcom/aide/uidesigner/fa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/uidesigner/fa;->FH:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/aide/uidesigner/fa;->Hw:Lcom/aide/uidesigner/s;

    iput-object p3, p0, Lcom/aide/uidesigner/fa;->v5:Lcom/aide/uidesigner/a;

    iput-object p4, p0, Lcom/aide/uidesigner/fa;->Zo:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Integer;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xbfac08785eca5d4L
    .end annotation

    const-wide v0, -0x28b472819ca9e850L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/fa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/fa;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/aide/uidesigner/fa;->Hw:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/fa;->v5:Lcom/aide/uidesigner/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_38

    :cond_29
    iget-object v2, p0, Lcom/aide/uidesigner/fa;->Hw:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/fa;->v5:Lcom/aide/uidesigner/a;

    iget-object v4, p0, Lcom/aide/uidesigner/fa;->Zo:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :goto_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/fa;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/fa;->j6(Ljava/lang/Integer;)V

    return-void
.end method
