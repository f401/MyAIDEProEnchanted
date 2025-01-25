.class public Ltv/ouya/console/api/store/AppDescription$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/AppDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final j6:Ltv/ouya/console/api/store/AppDescription$a;


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDescription$a;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDescription$a;->j6:Ltv/ouya/console/api/store/AppDescription$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    return-void
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    return-void
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_59

    const-class v2, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_59

    :cond_10
    check-cast p1, Ltv/ouya/console/api/store/AppDescription$a;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    :cond_24
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_35

    :cond_31
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    if-eqz v2, :cond_36

    :goto_35
    return v1

    :cond_36
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_47

    :cond_43
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_48

    :goto_47
    return v1

    :cond_48
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    iget-object p1, p1, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    if-eqz v2, :cond_55

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_57

    :cond_55
    if-eqz p1, :cond_58

    :goto_57
    return v1

    :cond_58
    return v0

    :cond_59
    :goto_59
    return v1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_27
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppVersion{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription$a;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uploadedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->FH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mainImageFullUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentRating=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription$a;->v5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
