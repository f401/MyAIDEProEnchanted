.class public abstract Labcd/BE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ME;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/BE$a;,
        Labcd/BE$b;,
        Labcd/BE$c;
    }
.end annotation


# instance fields
.field private final DW:Labcd/ME$a;

.field private final FH:Labcd/yE;

.field private final j6:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/BE;->j6:Ljava/lang/String;

    iput-object p1, p0, Labcd/BE;->DW:Labcd/ME$a;

    iput-object p3, p0, Labcd/BE;->FH:Labcd/yE;

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/BE;->FH:Labcd/yE;

    return-object v0
.end method

.method public Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/BE;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Labcd/ME;
    .registers 1

    return-object p0
.end method

.method public j6()Labcd/ME$a;
    .registers 2

    iget-object v0, p0, Labcd/BE;->DW:Labcd/ME$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ref["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/BE;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/BE;->DW()Labcd/yE;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/ME;
    .registers 1

    return-object p0
.end method
