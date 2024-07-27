.class Lcom/s1243808733/widget/CustomEditText$AutoCloseError;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/widget/CustomEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoCloseError"
.end annotation


# instance fields
.field et:Lcom/s1243808733/widget/CustomEditText;


# direct methods
.method public constructor <init>(Lcom/s1243808733/widget/CustomEditText;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/s1243808733/widget/CustomEditText$AutoCloseError;->et:Lcom/s1243808733/widget/CustomEditText;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    iget-object v1, p0, Lcom/s1243808733/widget/CustomEditText$AutoCloseError;->et:Lcom/s1243808733/widget/CustomEditText;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/s1243808733/widget/CustomEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
