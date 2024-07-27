.class public Lnet/f401/aide/EnvItem;
.super Ljava/lang/Object;
.source "EnvItem.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lnet/f401/aide/EnvItem;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lnet/f401/aide/EnvItem;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lnet/f401/aide/EnvItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lnet/f401/aide/EnvItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lnet/f401/aide/EnvItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lnet/f401/aide/EnvItem;->value:Ljava/lang/String;

    return-void
.end method
