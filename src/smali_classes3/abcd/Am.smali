.class public abstract Labcd/Am;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/on;


# instance fields
.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/Am;->j6:Ljava/lang/String;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Am;->j6:Ljava/lang/String;

    return-object v0
.end method
