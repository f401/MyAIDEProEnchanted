.class public Lcom/a4455jkjh/c/a;
.super Lcom/a4455jkjh/c/c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/a4455jkjh/c/c;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/a4455jkjh/c/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
