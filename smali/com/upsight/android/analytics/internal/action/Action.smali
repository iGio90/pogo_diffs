.class public abstract Lcom/upsight/android/analytics/internal/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        "U:",
        "Lcom/upsight/android/analytics/internal/action/ActionContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private mParams:Lcom/google/gson/JsonObject;

.field private mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    .local p1, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    .line 43
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected optParamInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 92
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 98
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 127
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 132
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 110
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 115
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 74
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
