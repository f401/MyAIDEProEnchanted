.class public Lorg/c/a/a/b/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/c;


# instance fields
.field protected a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/i;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/i;->a:[Ljava/lang/String;

    return-object v0
.end method
