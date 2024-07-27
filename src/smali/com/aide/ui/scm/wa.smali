.class public interface abstract Lcom/aide/ui/scm/wa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/wa$a;
    }
.end annotation


# virtual methods
.method public abstract DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;
.end method

.method public abstract DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
.end method

.method public abstract DW(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract FH(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract Hw(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
.end method

.method public abstract j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation
.end method

.method public abstract j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation
.end method

.method public abstract j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
.end method

.method public abstract j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation
.end method
